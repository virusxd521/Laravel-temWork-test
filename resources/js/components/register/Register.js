import { useState } from "react";
import FormInput from "./FormInput";
import Header from "../Header"
import axios from "axios";


const Register = () => {
  const [values, setValues] = useState({
    username: "",
    email: "",
    birthday: "",
    password: "",
    confirmPassword: "",
  });


  // Data for submiting the form with JSON
  const [dataForJson, setDataForJson] = useState({
    username: "",
    email: "",
    birthday: "",
    password: "",
    confirmPassword: "",
  });


  const inputs = [
    {
      id: 1,
      name: "username",
      type: "text",
      placeholder: "Username",
      errorMessage:
        "Username should be 3-16 characters and shouldn't include any special character!",
      label: "Username",
      pattern: "^[A-Za-z0-9]{3,30}$",
      // required: true,
    },
    {
      id: 2,
      name: "email",
      type: "email",
      placeholder: "Email",
      errorMessage: "It should be a valid email address!",
      label: "Email",
      // required: true,
    },
    {
      id: 3,
      name: "birthday",
      type: "date",
      placeholder: "Birthday",
      label: "Birthday",
    },
    {
      id: 4,
      name: "password",
      type: "password",
      placeholder: "Password",
      errorMessage:
        "Password should be 6-8 characters and include at least 1 letter, 1 number and 1 special character!",
      label: "Password",
      pattern: `^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,8}$`,
      // required: true,
    },
    {
      id: 5,
      name: "confirmPassword",
      type: "password",
      placeholder: "Confirm Password",
      errorMessage: "Passwords don't match!",
      label: "Confirm Password",
      pattern: values.password,
      // required: true,
    },
  ];

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(e.target);
  };

  const onChange = (e) => {
    setValues({ ...values, [e.target.name]: e.target.value });
  };


  const getValue = (e) => {
    e.preventDefault();

    

    const data = {
      username: '',
      email: '',
      birthday: '',
      password: '',
      confirmPassword: ''
      }


    const parentArr = Array.from(e.target);
    for(let key in data){
      parentArr.map((item, index) => {
          return key === item.name ? data[key] = item.value : null;
      });
    }
    
    configuring_registration(data);
  
  }


  const configuring_registration = async data => {
    document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    await axios.post('/test_form', {
      ...data,
    'X-CSRF-TOKEN' : document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    }
    ).then(response => {
      console.log(response);
    })
  }







  return (
    <>
        <Header />
        <div className="Register">
          <form onSubmit={getValue}>
            <h1>Register</h1>
            {inputs.map((input) => (
              <FormInput
                key={input.id}
                {...input}
                value={values[input.name]}
                onChange={onChange}
              />
            ))}
            <button>Submit</button>
          </form>
        </div>
    </>
        );
};

export default Register;