import useFetch from "../lib/hooks/useFetch"

function Primary() {
  const onButton = (method: string) => {
    useFetch(method)
  }

  return (
    <div className="w-fit px-5 py-1 mx-auto mt-6">
      <div>
        <div>
          <ul className="space-y-1">
            <li><button onClick={() => onButton('copy_vec_3')} >Copy Vec3</button></li>
            <li><button onClick={() => onButton('copy_vec_4')}>Copy Vec4</button></li>
          </ul>
        </div>
      </div>
    </div>
  )
}

export default Primary